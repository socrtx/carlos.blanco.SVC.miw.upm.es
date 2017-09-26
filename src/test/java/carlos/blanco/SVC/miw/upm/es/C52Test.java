package carlos.blanco.SVC.miw.upm.es;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class C52Test {

    private C52 c52;

    @Before
    public void before() {
        c52 = new C52();
    }

    @Test
    public void testMA() {
        assertEquals("mA", c52.mA());
    }

}
