.class Lcom/sysaac/haptic/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/sysaac/haptic/AACHapticUtils;


# direct methods
.method constructor <init>(Lcom/sysaac/haptic/AACHapticUtils;Ljava/io/File;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/sysaac/haptic/d;->f:Lcom/sysaac/haptic/AACHapticUtils;

    iput-object p2, p0, Lcom/sysaac/haptic/d;->a:Ljava/io/File;

    iput p3, p0, Lcom/sysaac/haptic/d;->b:I

    iput p4, p0, Lcom/sysaac/haptic/d;->c:I

    iput p5, p0, Lcom/sysaac/haptic/d;->d:I

    iput p6, p0, Lcom/sysaac/haptic/d;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/sysaac/haptic/d;->f:Lcom/sysaac/haptic/AACHapticUtils;

    invoke-static {v0}, Lcom/sysaac/haptic/AACHapticUtils;->access$000(Lcom/sysaac/haptic/AACHapticUtils;)Lcom/sysaac/haptic/player/f;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "AACHapticUtils"

    const-string v0, "mPlayer == null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sysaac/haptic/d;->f:Lcom/sysaac/haptic/AACHapticUtils;

    invoke-static {v0}, Lcom/sysaac/haptic/AACHapticUtils;->access$000(Lcom/sysaac/haptic/AACHapticUtils;)Lcom/sysaac/haptic/player/f;

    move-result-object v1

    iget-object v2, p0, Lcom/sysaac/haptic/d;->a:Ljava/io/File;

    iget v3, p0, Lcom/sysaac/haptic/d;->b:I

    iget v4, p0, Lcom/sysaac/haptic/d;->c:I

    iget v5, p0, Lcom/sysaac/haptic/d;->d:I

    iget v6, p0, Lcom/sysaac/haptic/d;->e:I

    invoke-interface/range {v1 .. v6}, Lcom/sysaac/haptic/player/f;->a(Ljava/io/File;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
