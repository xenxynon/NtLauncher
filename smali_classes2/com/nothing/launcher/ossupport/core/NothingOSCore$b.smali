.class final Lcom/nothing/launcher/ossupport/core/NothingOSCore$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/ossupport/core/NothingOSCore;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/ossupport/core/NothingOSCore;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/ossupport/core/NothingOSCore;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore$b;->g:Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;
    .locals 1

    new-instance v0, Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;

    iget-object p0, p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore$b;->g:Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;-><init>(Lcom/nothing/launcher/ossupport/core/NothingOSCore;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/ossupport/core/NothingOSCore$b;->a()Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;

    move-result-object p0

    return-object p0
.end method
