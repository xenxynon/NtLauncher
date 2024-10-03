.class public abstract Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "MediaItemViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private final doStartApplicationWithPackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_2

    :try_start_0
    sget-object p0, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doStartApplicationWithPackageName error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ViewPagerAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p0}, Ln5/l;->a(Ljava/lang/Object;)Ln5/l;

    :cond_2
    return-void
.end method

.method public static synthetic updateMusicMetaData$default(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;Ln2/b;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->updateMusicMetaData(Ln2/b;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateMusicMetaData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract bind(Ln2/b;)V
.end method

.method public abstract onAlbumArtClick()V
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public final openApp(Landroid/content/Context;Ln2/b;Z)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p3, :cond_4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ln2/b;->i()Landroid/app/PendingIntent;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {p3}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getOpenAppConsumer$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Ljava/util/function/Consumer;

    move-result-object p3

    if-eqz p3, :cond_2

    new-instance v0, Ln5/p;

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {v1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getViewPager2$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {p2}, Ln2/b;->i()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ln2/b;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ln5/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object v0, Ln5/t;->a:Ln5/t;

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p2}, Ln2/b;->l()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->doStartApplicationWithPackageName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ln2/b;->l()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->doStartApplicationWithPackageName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public abstract updateDisplayRatio(F)V
.end method

.method public abstract updateMusicMetaData(Ln2/b;Z)V
.end method

.method public abstract updatePlayBackState(I)V
.end method
