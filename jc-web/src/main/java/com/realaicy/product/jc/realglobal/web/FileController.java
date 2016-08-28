package com.realaicy.product.jc.realglobal.web;

import com.google.common.base.Joiner;
import com.realaicy.lib.core.orm.AbstractEntity;
import com.realaicy.lib.core.orm.jpa.search.BaseSpecificationsBuilder;
import com.realaicy.lib.core.orm.jpa.search.SearchOperation;
import com.realaicy.lib.core.service.BaseService;
import org.apache.tika.Tika;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.activation.MimetypesFileTypeMap;
import javax.imageio.ImageIO;
import javax.validation.Valid;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.Serializable;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by realaicy on 16/8/18.
 * xxx
 */
@Controller
public class FileController {

    static final Tika tika = new Tika();

    @RequestMapping(value = "/uploadPortrait", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<?> uploadPortrait(
            @RequestParam(value = "portrait", required = false) MultipartFile uploadfile) {

        //String filename = uploadfile.getOriginalFilename();

        String filename = "realfile_" + System.currentTimeMillis();
        try {
            // Get the filename and build the local file path (be sure that the
            // application have write permissions on such directory)
           /* try {
                ImageIO.read(input).toString();
                // It's an image (only BMP, GIF, JPG and PNG are recognized).
            } catch (Exception e) {
                // It's not an image.
            }*/

            if (!tika.detect(uploadfile.getInputStream()).startsWith("image")) {
                return new ResponseEntity<>("not a image file!", HttpStatus.BAD_REQUEST);
            }
            if (uploadfile.getSize() > 1048576) {
                return new ResponseEntity<>("image size over 1M!", HttpStatus.BAD_REQUEST);

            }

            System.out.println(ImageIO.read(uploadfile.getInputStream()).getWidth());
            System.out.println(ImageIO.read(uploadfile.getInputStream()).getHeight());


            String directory = "/Users/realaicy/OSS/Code/UI/tmp/upload/tmp";
            String filepath = Paths.get(directory, filename).toString();


            Files.copy(uploadfile.getInputStream(), Paths.get(directory, filename));

            // Save the file locally
//            BufferedOutputStream stream =
//                    new BufferedOutputStream(new FileOutputStream(new File(filepath)));
//            stream.write(uploadfile.getBytes());
//            stream.close();
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(filename, HttpStatus.OK);
    } // method uploadFile


    @RequestMapping(value = "/test", method = RequestMethod.GET)
    @ResponseBody
    public String test(
            @RequestParam(value = "portrait", required = false) MultipartFile uploadfile) {

        return "ok";
    } // method uploadFile
}
