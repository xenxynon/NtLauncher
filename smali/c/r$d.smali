.class Lc/r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field public g:Landroid/view/View;

.field public h:I

.field public i:Lc/r$d;

.field public j:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lc/r$d;",
            ">;"
        }
    .end annotation
.end field

.field public k:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/r$d;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lc/r$d;->j:Ljava/util/function/Consumer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/r$d;->k:J

    return-void
.end method

.method synthetic constructor <init>(Lc/r$a;)V
    .locals 0

    invoke-direct {p0}, Lc/r$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/r$c;)V
    .locals 2

    iget v0, p0, Lc/r$d;->h:I

    iput v0, p1, Lc/r$c;->c:I

    iget-object v0, p0, Lc/r$d;->g:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lc/r$d;->g:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    iput-object p0, p1, Lc/r$c;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    iput p0, p1, Lc/r$c;->b:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p0

    iput p0, p1, Lc/r$c;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p0

    iput p0, p1, Lc/r$c;->e:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p0

    iput p0, p1, Lc/r$c;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p0

    iput p0, p1, Lc/r$c;->g:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p0

    iput p0, p1, Lc/r$c;->h:I

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result p0

    iput p0, p1, Lc/r$c;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result p0

    iput p0, p1, Lc/r$c;->j:I

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    iput p0, p1, Lc/r$c;->k:F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    iput p0, p1, Lc/r$c;->l:F

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result p0

    iput p0, p1, Lc/r$c;->m:F

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result p0

    iput p0, p1, Lc/r$c;->n:F

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p0

    iput p0, p1, Lc/r$c;->o:F

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result p0

    iput p0, p1, Lc/r$c;->p:F

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    iput p0, p1, Lc/r$c;->q:I

    invoke-virtual {v0}, Landroid/view/View;->willNotDraw()Z

    move-result p0

    iput-boolean p0, p1, Lc/r$c;->r:Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lc/r$d;->j:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    iput-object v1, p0, Lc/r$d;->j:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
