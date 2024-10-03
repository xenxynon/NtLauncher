.class public final Lcom/nothing/launcher/setting/view/NTWallpaperPreview$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/setting/view/NTWallpaperPreview;
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

    invoke-direct {p0}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    const-string p0, "ro.phone.shell.color"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "black"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lh6/l;->r(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0802fb

    goto :goto_0

    :cond_0
    const p0, 0x7f0802fc

    :goto_0
    return p0
.end method
