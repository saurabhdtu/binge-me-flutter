# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

#Flutter Wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }

#-keepresourcexmlelements manifest/application/meta-data@value=GlideModule  For Dexguard Only

-dontwarn com.google.errorprone.annotations.** # Resolving Dagger 2 Proguard worning

##### Persisting cookies #########
#-dontwarn com.franmontiel.persistentcookiejar.**


#######  Remoiving acko classes from obsfocusion #########


############  Retrofit Proguard  #########
# Platform calls Class.forName on types which do not exist on Android to determine platform.
#-dontnote retrofit2.Platform
# Platform used when running on Java 8 VMs. Will not be used at runtime.
#-dontwarn retrofit2.Platform$Java8
# Retain generic type information for use by reflection by converters and adapters.
#-keepattributes Signature
# Retain declared checked exceptions for use by a Proxy instance.
#-keepattributes Exceptions

#######    OkHTTP3 Proguard        ############
#-dontwarn com.squareup.okhttp3.**
#-keep class com.squareup.okhttp3.** { *;}
#-dontwarn okio


#-keep public class com.android.installreferrer.** { *; }

# add if wrapper warning
#-keep class com.appsflyer.** { *; }
