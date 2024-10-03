.class public final La4/h;
.super La4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/h$a;
    }
.end annotation


# static fields
.field public static final t:La4/h$a;


# instance fields
.field private final m:Lcom/android/launcher3/model/data/FolderInfo;

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La4/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La4/h$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, La4/h;->t:La4/h$a;

    return-void
.end method

.method public constructor <init>(Lc3/a;Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, La4/b;-><init>(Lc3/a;Landroid/content/Context;)V

    iput-object p3, p0, La4/h;->m:Lcom/android/launcher3/model/data/FolderInfo;

    sget-object p2, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, La4/b;->o()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, La4/b;->s()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ab

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, La4/b;->s()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700aa

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, La4/h;->n:I

    sget-object p2, Lz4/g;->a:Lz4/g;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lz4/g;->c(F)F

    move-result p1

    invoke-static {p1}, La6/a;->b(F)I

    move-result p1

    iput p1, p0, La4/h;->o:I

    invoke-virtual {p0}, La4/h;->h()I

    move-result p1

    iput p1, p0, La4/h;->p:I

    const/16 p1, 0x8

    iput p1, p0, La4/h;->q:I

    iput p1, p0, La4/h;->r:I

    const/4 p1, 0x3

    iput p1, p0, La4/h;->s:I

    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;Ljava/util/List;Ly5/l;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            ">;",
            "Ly5/l<",
            "-",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, La4/b;->c(Ljava/util/List;Ljava/util/List;Ly5/l;I)V

    iget-object p1, p0, La4/h;->m:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, La4/b;->r()I

    move-result p2

    mul-int/2addr p2, p4

    sub-int/2addr p1, p2

    const/16 p2, 0x8

    if-le p1, p2, :cond_0

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, La4/b;->l()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p3, Lc3/a$c;

    invoke-direct {p3}, Lc3/a$c;-><init>()V

    invoke-virtual {p3, p4}, Lc3/a$c;->f(I)V

    invoke-virtual {p3, p2}, Lc3/a$c;->h(I)V

    const p2, 0x7f0802b8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p2, Lz3/d;->a:Lz3/d;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lz3/d;->f(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, La4/b;->k()Lc3/a;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public g()I
    .locals 0

    iget p0, p0, La4/h;->q:I

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, La4/h;->o:I

    return p0
.end method

.method public m()I
    .locals 2

    invoke-super {p0}, La4/b;->m()I

    move-result v0

    invoke-virtual {p0}, La4/h;->h()I

    move-result v1

    iget p0, p0, La4/h;->n:I

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public p()I
    .locals 0

    iget p0, p0, La4/h;->r:I

    return p0
.end method

.method public q()I
    .locals 0

    iget p0, p0, La4/h;->s:I

    return p0
.end method

.method public u()I
    .locals 0

    iget p0, p0, La4/h;->p:I

    return p0
.end method

.method public y(Lc3/a$c;Z)V
    .locals 5

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La4/b;->k()Lc3/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Lc3/a$c;->a()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    mul-int/2addr v0, v1

    invoke-virtual {p1}, Lc3/a$c;->c()I

    move-result v1

    invoke-virtual {p0}, La4/h;->q()I

    move-result v3

    rem-int/2addr v1, v3

    invoke-virtual {p1}, Lc3/a$c;->c()I

    move-result v3

    invoke-virtual {p0}, La4/h;->q()I

    move-result v4

    div-int/2addr v3, v4

    if-eqz p2, :cond_1

    rsub-int/lit8 p2, v1, 0x3

    add-int/lit8 v1, p2, -0x1

    :cond_1
    invoke-virtual {p0}, La4/h;->h()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, La4/h;->h()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, La4/b;->n()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, La4/h;->h()I

    move-result p2

    mul-int/2addr p2, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, La4/h;->m()I

    move-result p2

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lc3/a$c;->i(I)V

    invoke-virtual {p0}, La4/b;->n()I

    move-result p2

    invoke-virtual {p0}, La4/h;->h()I

    move-result v0

    mul-int/2addr v0, v3

    add-int/2addr p2, v0

    invoke-virtual {p0}, La4/h;->m()I

    move-result p0

    mul-int/2addr v3, p0

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lc3/a$c;->j(I)V

    return-void
.end method
