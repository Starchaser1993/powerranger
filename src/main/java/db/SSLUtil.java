package db;

import javax.net.ssl.*;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;

public class SSLUtil {

    public static void disableSSLValidation() {
        try {
            // Crea un TrustManager que confía en todos los certificados
            TrustManager[] trustAllCerts = new TrustManager[]{
                    new X509TrustManager() {
                        public X509Certificate[] getAcceptedIssuers() { return null; }
                        public void checkClientTrusted(X509Certificate[] certs, String authType) { }
                        public void checkServerTrusted(X509Certificate[] certs, String authType) { }
                    }
            };

            // Configura el contexto SSL para que utilice el TrustManager que confía en todos los certificados
            SSLContext sc = SSLContext.getInstance("SSL");
            sc.init(null, trustAllCerts, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());

            // Deshabilita la verificación del nombre del host
            HttpsURLConnection.setDefaultHostnameVerifier((hostname, session) -> true);

            System.out.println("Validación SSL desactivada para entorno de pruebas.");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

