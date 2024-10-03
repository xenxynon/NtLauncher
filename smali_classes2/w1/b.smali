.class public final Lw1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw1/b;

    invoke-direct {v0}, Lw1/b;-><init>()V

    sput-object v0, Lw1/b;->a:Lw1/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    aget v2, p0, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    aget v4, p0, v2

    int-to-float v4, v4

    add-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    aget v1, p0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    aget p0, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    int-to-float p0, p0

    add-float/2addr p0, v3

    float-to-int p0, p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Ln5/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ln5/k<",
            "Landroid/content/Intent;",
            "Landroid/app/ActivityOptions;",
            ">;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    instance-of v1, p1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v2, "android.widget.extra.CHECKED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0, p1}, Lw1/b;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 p1, 0x10a0000

    const v1, 0x10a0001

    invoke-static {p0, p1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    const-string p1, "makeCustomAnimation(\n   \u2026R.anim.fade_out\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln5/k;

    invoke-direct {p1, v0, p0}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
