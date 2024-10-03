.class public final Lx1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lx1/e$a;-><init>()V

    return-void
.end method

.method private final b(Landroid/content/Context;Landroid/util/SparseIntArray;)[B
    .locals 8

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "remote_views_color_resources"

    const-string v1, "raw"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    sget-object v0, Lx1/e;->b:Lx1/e$a;

    const-string v1, "input"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lx1/e$a;->c(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "rawContent.toByteArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lv5/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    array-length p0, v0

    add-int/lit16 p0, p0, -0x5d0

    const/4 v2, 0x4

    sub-int/2addr p0, v2

    if-gez p0, :cond_0

    const-string p0, "ColorResources"

    const-string p1, "ARSC file for theme colors is invalid."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const v1, 0x106001d

    :goto_0
    const v3, 0x106005d

    if-ge v1, v3, :cond_2

    const v3, 0xffff

    and-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, p0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    add-int v6, v3, v5

    and-int/lit16 v7, v4, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lv5/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final c(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 3

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/SparseIntArray;)Lx1/e;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorMapping"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lx1/e$a;->b(Landroid/content/Context;Landroid/util/SparseIntArray;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_1
    const-string p1, "remote_views_theme_colors.arsc"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/system/Os;->memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v1, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v1}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    invoke-static {p0, v0}, Landroid/content/res/loader/ResourcesProvider;->loadFromTable(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V

    new-instance v2, Lx1/e;

    invoke-direct {v2, v1, v0}, Lx1/e;-><init>(Landroid/content/res/loader/ResourcesLoader;Lkotlin/jvm/internal/i;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {p0, v0}, Lv5/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {p2, v0}, Lv5/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz p1, :cond_1

    :try_start_7
    invoke-static {p1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_9
    invoke-static {p0, v1}, Lv5/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_b
    invoke-static {p2, p0}, Lv5/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception p0

    goto :goto_0

    :catchall_5
    move-exception p0

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    :try_start_c
    invoke-static {p1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    :cond_2
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "ColorResources"

    const-string p2, "Failed to setup the context for theme colors"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
