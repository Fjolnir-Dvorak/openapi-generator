package org.openapitools.codegen.kotlin;

import org.openapitools.codegen.CodegenType;
import org.openapitools.codegen.languages.kotlin.AbstractKotlinCodegen;
import org.testng.annotations.Test;

import static org.openapitools.codegen.CodegenConstants.ENUM_PROPERTY_NAMING_TYPE.*;
import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

public class AbstractKotlinCodegenTest {

    private final AbstractKotlinCodegen codegen = new P_AbstractKotlinCodegen();

    @Test
    public void camlCaseEnumConverter() {
        codegen.setEnumPropertyNaming(camelCase.name());
        assertEquals(codegen.toEnumVarName("long Name", null), "longName");
        assertEquals(codegen.toEnumVarName("1long Name", null), "_1longName");
        assertEquals(codegen.toEnumVarName("not1long Name", null), "not1longName");
    }

    @Test
    public void uppercasEnumConverter() {
        codegen.setEnumPropertyNaming(UPPERCASE.name());
        assertEquals(codegen.toEnumVarName("long Name", null), "LONG_NAME");
        assertEquals(codegen.toEnumVarName("1long Name", null), "_1LONG_NAME");
        assertEquals(codegen.toEnumVarName("not1long Name", null), "NOT1LONG_NAME");
    }
    @Test
    public void snake_caseEnumConverter() {
        codegen.setEnumPropertyNaming(snake_case.name());
        assertEquals(codegen.toEnumVarName("long Name", null), "long_name");
        assertEquals(codegen.toEnumVarName("1long Name", null), "_1long_name");
        assertEquals(codegen.toEnumVarName("not1long Name", null), "not1long_name");
    }

    @Test
    public void originalEnumConverter() {
        codegen.setEnumPropertyNaming(original.name());
        assertEquals(codegen.toEnumVarName("long Name", null), "long_Name");
        assertEquals(codegen.toEnumVarName("1long Name", null), "_1long_Name");
        assertEquals(codegen.toEnumVarName("not1long Name", null), "not1long_Name");
    }
    @Test
    public void pascalCaseEnumConverter() {
        codegen.setEnumPropertyNaming(PascalCase.name());
        assertEquals(codegen.toEnumVarName("long Name", null), "LongName");
        assertEquals(codegen.toEnumVarName("1long Name", null), "_1longName");
        assertEquals(codegen.toEnumVarName("not1long Name", null), "Not1longName");
    }

    @Test
    public void toEnumValue(){
        assertEquals(codegen.toEnumValue("1", "kotlin.Int"), "1");
        assertEquals(codegen.toEnumValue("1", "kotlin.Double"), "1.0");
        assertEquals(codegen.toEnumValue("1.3", "kotlin.Double"), "1.3");
        assertEquals(codegen.toEnumValue("1337", "kotlin.Long"), "1337");
        assertEquals(codegen.toEnumValue("5", "kotlin.Float"), "5f");
        assertEquals(codegen.toEnumValue("1.0", "kotlin.Float"), "1.0f");
        assertEquals(codegen.toEnumValue("data", "Something"), "\"data\"");
    }

    private class P_AbstractKotlinCodegen extends AbstractKotlinCodegen {
        @Override
        public CodegenType getTag() {
            return null;
        }

        @Override
        public String getName() {
            return null;
        }

        @Override
        public String getHelp() {
            return null;
        }
    }

    @Test
    public void isDataTypeString(){
        assertFalse(codegen.isDataTypeString("kotlin.Int"));
        assertTrue(codegen.isDataTypeString("kotlin.String"));
        assertTrue(codegen.isDataTypeString("String"));
    }
}
