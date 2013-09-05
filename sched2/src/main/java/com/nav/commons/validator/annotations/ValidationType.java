package com.nav.commons.validator.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.cme.commons.validator.validators.CMEValidator;

@Target({ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
public @interface ValidationType
{
   Class<? extends CMEValidator> validationClass();

   String errorCode();
}