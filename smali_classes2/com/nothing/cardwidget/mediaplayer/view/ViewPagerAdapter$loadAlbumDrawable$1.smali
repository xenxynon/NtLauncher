.class final Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->loadAlbumDrawable(Landroid/widget/ImageView;Ln2/b;ILy5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Li6/m0;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardwidget.mediaplayer.view.ViewPagerAdapter$loadAlbumDrawable$1"
    f = "ViewPagerAdapter.kt"
    l = {
        0x29c,
        0x2a1,
        0x2a3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Ln2/b;

.field final synthetic $defaultRes:I

.field final synthetic $listener:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "Landroid/graphics/drawable/Drawable;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_loadAlbumDrawable:Landroid/widget/ImageView;

.field label:I

.field final synthetic this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;


# direct methods
.method constructor <init>(Ln2/b;Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Ly5/l;ILq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/b;",
            "Landroid/widget/ImageView;",
            "Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;",
            "Ly5/l<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Ln5/t;",
            ">;I",
            "Lq5/d<",
            "-",
            "Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$data:Ln2/b;

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$this_loadAlbumDrawable:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    iput-object p4, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$listener:Ly5/l;

    iput p5, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$defaultRes:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method

.method public static synthetic a(Ly5/l;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->invokeSuspend$lambda-1(Ly5/l;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-1(Ly5/l;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "*>;)",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$data:Ln2/b;

    iget-object v2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$this_loadAlbumDrawable:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    iget-object v4, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$listener:Ly5/l;

    iget v5, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$defaultRes:I

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;-><init>(Ln2/b;Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Ly5/l;ILq5/d;)V

    return-object p1
.end method

.method public final invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$data:Ln2/b;

    invoke-virtual {p1}, Ln2/b;->a()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$this_loadAlbumDrawable:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$listener:Ly5/l;

    invoke-static {}, Li6/b1;->c()Li6/g2;

    move-result-object v6

    new-instance v7, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1$1$1;

    invoke-direct {v7, v1, p1, v5}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1$1$1;-><init>(Ly5/l;Landroid/graphics/drawable/Drawable;Lq5/d;)V

    iput v4, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->label:I

    invoke-static {v6, v7, p0}, Li6/h;->e(Lq5/g;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$data:Ln2/b;

    iput v3, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getDesiredAlbumIcon(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Ln2/b;Lq5/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Landroid/graphics/drawable/Icon;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$this_loadAlbumDrawable:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$listener:Ly5/l;

    new-instance v4, Lcom/nothing/cardwidget/mediaplayer/view/o;

    invoke-direct {v4, v3}, Lcom/nothing/cardwidget/mediaplayer/view/o;-><init>(Ly5/l;)V

    iget-object v3, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {v3}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getMainHandler$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1, v1, v4, v3}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    sget-object p1, Ln5/t;->a:Ln5/t;

    goto :goto_2

    :cond_6
    move-object p1, v5

    :goto_2
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$this_loadAlbumDrawable:Landroid/widget/ImageView;

    iget v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->$defaultRes:I

    invoke-static {}, Li6/b1;->c()Li6/g2;

    move-result-object v3

    new-instance v4, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1$3$1;

    invoke-direct {v4, p1, v1, v5}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1$3$1;-><init>(Landroid/widget/ImageView;ILq5/d;)V

    iput v2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->label:I

    invoke-static {v3, v4, p0}, Li6/h;->e(Lq5/g;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_3
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
