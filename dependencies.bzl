load("@scala_things//:dependencies/dependencies.bzl", "java_dependency", "scala_dependency", "scala_fullver_dependency", "make_scala_versions", "apply_scala_fullver_version")

scala_versions = make_scala_versions(
    "2",
    "13",
    "6",
)

project_deps = [
    scala_dependency("org.typelevel", "cats-effect", "3.2.2"),

    # the lib is written with json4s
    scala_dependency("org.json4s", "json4s-native", "3.5.5"),

    # absolute insanity
    java_dependency("commons-codec", "commons-codec", "1.11"),
    java_dependency("org.apache.santuario", "xmlsec", "2.1.0"),
    java_dependency("org.bouncycastle", "bcprov-jdk15on", "1.58"),
    java_dependency("org.bouncycastle", "bcpkix-jdk15on", "1.58"),

    # compat
    java_dependency("jakarta.xml.bind", "jakarta.xml.bind-api", "2.3.3"),
    java_dependency("com.sun.xml.bind", "jaxb-impl", "2.3.3"),
]

def add_scala_fullver(s):
    return apply_scala_fullver_version(scala_versions, s)
