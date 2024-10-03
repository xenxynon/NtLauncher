.class public final Ly1/f$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly1/f;->g(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly1/f;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lc2/e;


# direct methods
.method constructor <init>(Ly1/f;Landroid/view/View;Lc2/e;)V
    .locals 0

    iput-object p1, p0, Ly1/f$b;->a:Ly1/f;

    iput-object p2, p0, Ly1/f$b;->b:Landroid/view/View;

    iput-object p3, p0, Ly1/f$b;->c:Lc2/e;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Ly1/f$b;->a:Ly1/f;

    invoke-static {v0}, Ly1/f;->f(Ly1/f;)Lx1/i;

    move-result-object v0

    iget-object v1, p0, Ly1/f$b;->b:Landroid/view/View;

    iget-object p0, p0, Ly1/f$b;->c:Lc2/e;

    invoke-interface {v0, v1, p1, p0}, Lx1/i;->k(Landroid/view/View;ILc2/e;)V

    return-void
.end method
