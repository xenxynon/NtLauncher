.class public final Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$i;
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
        "Landroidx/lifecycle/ViewModelStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Ln5/e;


# direct methods
.method public constructor <init>(Ln5/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$i;->g:Ln5/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$i;->g:Ln5/e;

    invoke-static {p0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->access$viewModels$lambda-1(Ln5/e;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    const-string v0, "owner.viewModelStore"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$i;->invoke()Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method
