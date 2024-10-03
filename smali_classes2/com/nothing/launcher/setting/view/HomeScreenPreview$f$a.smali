.class final Lcom/nothing/launcher/setting/view/HomeScreenPreview$f$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/view/HomeScreenPreview$f;->invoke()V
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

    iput-object p1, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f$a;->g:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

    iput-object p2, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f$a;->h:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f$a;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f$a;->g:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

    iget-object p0, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f$a;->h:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->d(Lcom/nothing/launcher/setting/view/HomeScreenPreview;Landroid/view/View;)V

    return-void
.end method
