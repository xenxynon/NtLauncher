.class public final Lcom/nothing/launcher/ossupport/vibrate/VibrateProxyOS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final richTapUtils:Lcom/sysaac/haptic/AACHapticUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sysaac/haptic/AACHapticUtils;->getInstance()Lcom/sysaac/haptic/AACHapticUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/ossupport/vibrate/VibrateProxyOS;->richTapUtils:Lcom/sysaac/haptic/AACHapticUtils;

    invoke-virtual {v0, p1}, Lcom/sysaac/haptic/AACHapticUtils;->init(Landroid/content/Context;)Lcom/sysaac/haptic/AACHapticUtils;

    return-void
.end method


# virtual methods
.method public final quit()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/ossupport/vibrate/VibrateProxyOS;->richTapUtils:Lcom/sysaac/haptic/AACHapticUtils;

    invoke-virtual {p0}, Lcom/sysaac/haptic/AACHapticUtils;->quit()V

    return-void
.end method

.method public final vibratePattern(Ljava/io/File;I)Z
    .locals 1

    const-string v0, "patternFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    iget-object p0, p0, Lcom/nothing/launcher/ossupport/vibrate/VibrateProxyOS;->richTapUtils:Lcom/sysaac/haptic/AACHapticUtils;

    invoke-virtual {p0, p1, p2}, Lcom/sysaac/haptic/AACHapticUtils;->playPattern(Ljava/io/File;I)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "VibrateProxyOS -> vibratePattern "

    invoke-static {p1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
