.class public final Lcom/nothing/launcher/card/p;
.super Lcom/nothing/cardhost/d;
.source "SourceFile"

# interfaces
.implements Lu4/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/card/p$b;
    }
.end annotation


# static fields
.field public static final s:Lcom/nothing/launcher/card/p$b;


# instance fields
.field private q:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/nothing/launcher/card/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/card/p$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/card/p$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/card/p;->s:Lcom/nothing/launcher/card/p$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ly5/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ly5/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRemove"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x400

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardhost/d;-><init>(Landroid/content/Context;ILw1/a;ILkotlin/jvm/internal/i;)V

    iput-object p2, p0, Lcom/nothing/launcher/card/p;->q:Ly5/l;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/p;->r:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ly5/l;ILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/nothing/launcher/card/p$a;->g:Lcom/nothing/launcher/card/p$a;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/card/p;-><init>(Landroid/content/Context;Ly5/l;)V

    return-void
.end method

.method public static synthetic K(Lcom/android/launcher3/BaseActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/card/p;->N(Lcom/android/launcher3/BaseActivity;I)V

    return-void
.end method

.method private final L(Lcom/android/launcher3/BaseDraggingActivity;I)Landroid/os/Bundle;
    .locals 2

    iget-object p0, p0, Lcom/nothing/launcher/card/p;->r:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/card/r;

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    if-nez v0, :cond_2

    return-object p2

    :cond_2
    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "android.activity.splashScreenStyle"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private final M(Lcom/android/launcher3/BaseActivity;I)V
    .locals 1

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/nothing/launcher/card/o;

    invoke-direct {v0, p1, p2}, Lcom/nothing/launcher/card/o;-><init>(Lcom/android/launcher3/BaseActivity;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final N(Lcom/android/launcher3/BaseActivity;I)V
    .locals 2

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final O(Ly5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/card/p;->q:Ly5/l;

    return-void
.end method

.method public final P(Lcom/android/launcher3/BaseDraggingActivity;ILcom/nothing/cardservice/CardWidgetMetaInfo;I)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metaInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/card/p;->L(Lcom/android/launcher3/BaseDraggingActivity;I)Landroid/os/Bundle;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/nothing/cardhost/d;->C(Landroid/app/Activity;ILcom/nothing/cardservice/CardWidgetMetaInfo;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p2, 0x7f12005a

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, p1, p4}, Lcom/nothing/launcher/card/p;->M(Lcom/android/launcher3/BaseActivity;I)V

    :goto_0
    return-void
.end method

.method public final Q()V
    .locals 1

    sget-object v0, Lu4/c;->a:Lu4/c;

    invoke-virtual {v0, p0}, Lu4/c;->b(Lu4/a;)V

    return-void
.end method

.method public final R()V
    .locals 1

    sget-object v0, Lu4/c;->a:Lu4/c;

    invoke-virtual {v0, p0}, Lu4/c;->f(Lu4/a;)V

    return-void
.end method

.method public o()V
    .locals 0

    invoke-super {p0}, Lcom/nothing/cardhost/d;->o()V

    iget-object p0, p0, Lcom/nothing/launcher/card/p;->r:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public onScrollableChanged()V
    .locals 4

    iget-object p0, p0, Lcom/nothing/launcher/card/p;->r:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nothing/launcher/card/r;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/nothing/launcher/card/r;->o0()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public r(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nothing/cardhost/d;->r(I)V

    iget-object p0, p0, Lcom/nothing/launcher/card/p;->r:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public u(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nothing/cardhost/d;->u(I)V

    iget-object p0, p0, Lcom/nothing/launcher/card/p;->q:Ly5/l;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public v(Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;Z)Lcom/nothing/cardhost/e;
    .locals 1

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/nothing/launcher/card/r;

    const/4 p4, 0x0

    const/4 v0, 0x2

    invoke-direct {p3, p1, p4, v0, p4}, Lcom/nothing/launcher/card/r;-><init>(Landroid/content/Context;Lw1/a;ILkotlin/jvm/internal/i;)V

    iget-object p0, p0, Lcom/nothing/launcher/card/p;->r:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p3
.end method
