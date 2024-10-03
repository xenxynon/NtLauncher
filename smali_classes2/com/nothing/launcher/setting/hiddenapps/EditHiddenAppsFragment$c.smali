.class public final Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$c;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$c;->a:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$c;->a:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    invoke-static {p0, p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->e(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;I)V

    return-void
.end method
