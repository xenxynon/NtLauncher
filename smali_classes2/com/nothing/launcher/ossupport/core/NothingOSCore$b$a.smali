.class public final Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/ossupport/core/NothingOSCore$b;->a()Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nothing/launcher/ossupport/core/NothingOSCore;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/ossupport/core/NothingOSCore;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;->a:Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "NothingOSCore"

    const-string p1, "Remote service connected!"

    invoke-static {p0, p1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote service onError, errorCode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NothingOSCore"

    invoke-static {v0, p1}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;->a:Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    invoke-virtual {p0}, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->init()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "NothingOSCore"

    const-string v0, "Remote service disconnected unexpected!"

    invoke-static {p1, v0}, Ly2/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;->a:Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    invoke-virtual {p0}, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->init()V

    return-void
.end method
