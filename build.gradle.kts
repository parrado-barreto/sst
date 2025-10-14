plugins {
    id("java")
}

group = "org.example"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    // https://mvnrepository.com/artifact/io.karatelabs/karate-junit5
    testImplementation("io.karatelabs:karate-junit5:1.5.1")
}

tasks.test {
    useJUnitPlatform()
}