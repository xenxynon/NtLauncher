.class public final Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$d;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment;-><init>()V
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

.field final synthetic h:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Ly5/a;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$d;->g:Ly5/a;

    iput-object p2, p0, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$d;->h:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$d;->g:Ly5/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ly5/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$d;->h:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    const-string p0, "requireActivity().defaultViewModelCreationExtras"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$d;->invoke()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    return-object p0
.end method
