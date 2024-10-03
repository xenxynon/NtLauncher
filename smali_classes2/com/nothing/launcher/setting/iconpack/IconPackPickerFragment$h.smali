.class public final Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$h;
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
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Ly5/a;


# direct methods
.method public constructor <init>(Ly5/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$h;->g:Ly5/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$h;->g:Ly5/a;

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$h;->invoke()Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    return-object p0
.end method
