.class public final Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$j;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Ly5/a;

.field final synthetic h:Ln5/e;


# direct methods
.method public constructor <init>(Ly5/a;Ln5/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$j;->g:Ly5/a;

    iput-object p2, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$j;->h:Ln5/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$j;->g:Ly5/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ly5/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    if-nez v0, :cond_3

    :cond_0
    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$j;->h:Ln5/e;

    invoke-static {p0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->access$viewModels$lambda-1(Ln5/e;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    move-object v0, p0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :cond_3
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$j;->invoke()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    return-object p0
.end method
