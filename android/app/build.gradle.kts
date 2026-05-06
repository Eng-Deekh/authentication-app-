plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")

    // Firebase
    id("com.google.gms.google-services")
}

android {

    namespace = "com.example.authentication_app"

    compileSdk = 35

    defaultConfig {

        applicationId = "com.example.authentication_app"

        minSdk = flutter.minSdkVersion

        targetSdk = 35

        versionCode = 1

        versionName = "1.0"
    }

    // FIX JVM ERROR
    compileOptions {

        sourceCompatibility = JavaVersion.VERSION_17

        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {

        jvmTarget = "17"
    }

    buildTypes {

        release {

            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {

    source = "../.."
}

dependencies {

    implementation(
        platform(
            "com.google.firebase:firebase-bom:34.12.0"
        )
    )
}
