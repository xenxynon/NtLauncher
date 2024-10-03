.class final Lcom/nothing/launcher/setting/view/HomeScreenPreview$f;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/view/HomeScreenPreview;->i(ILt4/g;)V
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
.field final synthetic g:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

.field final synthetic h:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/view/HomeScreenPreview;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f;->g:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

    iput-object p2, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f;->h:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f;->g:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

    iget-object v1, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f;->h:Landroid/view/View;

    invoke-static {v0, v0, v1}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->c(Lcom/nothing/launcher/setting/view/HomeScreenPreview;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f;->g:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

    new-instance v2, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f$a;

    invoke-direct {v2, v1, v0}, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f$a;-><init>(Lcom/nothing/launcher/setting/view/HomeScreenPreview;Landroid/view/View;)V

    invoke-static {v1, v0, v2}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->a(Lcom/nothing/launcher/setting/view/HomeScreenPreview;Landroid/view/View;Ly5/a;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p0, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f;->g:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

    invoke-static {p0, v0}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->d(Lcom/nothing/launcher/setting/view/HomeScreenPreview;Landroid/view/View;)V

    return-void
.end method
