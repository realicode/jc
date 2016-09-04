package com.realaicy.product.jc.common.persistence.event;

import com.google.common.base.Preconditions;
import com.realaicy.lib.core.orm.jpa.BaseEntity;
import org.springframework.context.ApplicationEvent;

public final class BeforeEntityCreateEvent<T extends BaseEntity> extends ApplicationEvent {
    private final Class<T> clazz;
    private final T entity;

    public BeforeEntityCreateEvent(final Object sourceToSet, final Class<T> clazzToSet, final T entityToSet) {
        super(sourceToSet);

        Preconditions.checkNotNull(clazzToSet);
        clazz = clazzToSet;

        Preconditions.checkNotNull(entityToSet);
        entity = entityToSet;
    }

    // API

    public final Class<T> getClazz() {
        return clazz;
    }

    public final T getEntity() {
        return Preconditions.checkNotNull(entity);
    }

}
