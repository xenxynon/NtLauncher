.class final Lcom/nothing/launcher/card/g$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/card/g;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/card/g;

.field final synthetic h:Lcom/nothing/launcher/card/p;

.field final synthetic i:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

.field final synthetic j:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/card/g;Lcom/nothing/launcher/card/p;Lcom/nothing/launcher/card/CardWidgetProviderInfo;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/card/g$a;->g:Lcom/nothing/launcher/card/g;

    iput-object p2, p0, Lcom/nothing/launcher/card/g$a;->h:Lcom/nothing/launcher/card/p;

    iput-object p3, p0, Lcom/nothing/launcher/card/g$a;->i:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    iput-object p4, p0, Lcom/nothing/launcher/card/g$a;->j:Landroid/os/Bundle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Ly5/a;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/card/g$a;->b(Ly5/a;)V

    return-void
.end method

.method private static final b(Ly5/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/card/g$a;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/card/g$a;->g:Lcom/nothing/launcher/card/g;

    iget-object v1, p0, Lcom/nothing/launcher/card/g$a;->h:Lcom/nothing/launcher/card/p;

    invoke-virtual {v1}, Lcom/nothing/cardhost/d;->l()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nothing/launcher/card/g;->j(Lcom/nothing/launcher/card/g;I)V

    iget-object v0, p0, Lcom/nothing/launcher/card/g$a;->h:Lcom/nothing/launcher/card/p;

    iget-object v1, p0, Lcom/nothing/launcher/card/g$a;->g:Lcom/nothing/launcher/card/g;

    invoke-static {v1}, Lcom/nothing/launcher/card/g;->i(Lcom/nothing/launcher/card/g;)I

    move-result v1

    iget-object v2, p0, Lcom/nothing/launcher/card/g$a;->i:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    iget-object v3, p0, Lcom/nothing/launcher/card/g$a;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nothing/cardhost/d;->m(ILcom/nothing/cardservice/CardWidgetMetaInfo;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nothing/launcher/card/g$a;->g:Lcom/nothing/launcher/card/g;

    invoke-static {v0}, Lcom/nothing/launcher/card/g;->e(Lcom/nothing/launcher/card/g;)Ly5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/card/g$a;->g:Lcom/nothing/launcher/card/g;

    invoke-static {p0}, Lcom/nothing/launcher/card/g;->d(Lcom/nothing/launcher/card/g;)Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/nothing/launcher/card/f;

    invoke-direct {v1, v0}, Lcom/nothing/launcher/card/f;-><init>(Ly5/a;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
