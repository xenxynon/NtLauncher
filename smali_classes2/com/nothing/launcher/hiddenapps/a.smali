.class public final Lcom/nothing/launcher/hiddenapps/a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/hiddenapps/a;->a:Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/launcher/hiddenapps/a;->a:Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    invoke-static {p1}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->b(Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;)Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "headerView"

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/a;->a:Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    invoke-static {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->c(Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;)Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "rv"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;->d(I)V

    return-void
.end method
