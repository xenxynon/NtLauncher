.class public final synthetic Lcom/android/quickstep/util/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/util/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/util/n;

    invoke-direct {v0}, Lcom/android/quickstep/util/n;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/n;->a:Lcom/android/quickstep/util/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/quickstep/util/ImageActionUtils;->g(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
