.class Lcom/sysaac/haptic/player/h;
.super Lcom/sysaac/haptic/base/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/sysaac/haptic/player/g;


# direct methods
.method constructor <init>(Lcom/sysaac/haptic/player/g;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/sysaac/haptic/player/h;->d:Lcom/sysaac/haptic/player/g;

    iput-object p2, p0, Lcom/sysaac/haptic/player/h;->a:Ljava/lang/String;

    iput p3, p0, Lcom/sysaac/haptic/player/h;->b:I

    iput p4, p0, Lcom/sysaac/haptic/player/h;->c:I

    invoke-direct {p0}, Lcom/sysaac/haptic/base/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    iget-object v0, p0, Lcom/sysaac/haptic/player/h;->d:Lcom/sysaac/haptic/player/g;

    iget-object v1, p0, Lcom/sysaac/haptic/player/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sysaac/haptic/player/g;->a(Lcom/sysaac/haptic/player/g;)Lcom/sysaac/haptic/base/o;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sysaac/haptic/player/h;->d:Lcom/sysaac/haptic/player/g;

    invoke-static {v2}, Lcom/sysaac/haptic/player/g;->a(Lcom/sysaac/haptic/player/g;)Lcom/sysaac/haptic/base/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sysaac/haptic/base/o;->b()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-static {v1, v2}, Lcom/sysaac/haptic/base/r;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sysaac/haptic/player/h;->d:Lcom/sysaac/haptic/player/g;

    invoke-static {v2}, Lcom/sysaac/haptic/player/g;->a(Lcom/sysaac/haptic/player/g;)Lcom/sysaac/haptic/base/o;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sysaac/haptic/player/h;->d:Lcom/sysaac/haptic/player/g;

    invoke-static {v2}, Lcom/sysaac/haptic/player/g;->a(Lcom/sysaac/haptic/player/g;)Lcom/sysaac/haptic/base/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sysaac/haptic/base/o;->a()I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/sysaac/haptic/player/h;->b:I

    :goto_1
    iget p0, p0, Lcom/sysaac/haptic/player/h;->c:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p0, v3}, Lcom/sysaac/haptic/player/g;->a(Lcom/sysaac/haptic/player/g;Ljava/lang/String;IILcom/sysaac/haptic/sync/SyncCallback;)V

    return-void
.end method
