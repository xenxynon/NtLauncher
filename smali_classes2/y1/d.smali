.class public final synthetic Ly1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic a:Ly1/f;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lc2/e;

.field public final synthetic d:Lw1/a;


# direct methods
.method public synthetic constructor <init>(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/d;->a:Ly1/f;

    iput-object p2, p0, Ly1/d;->b:Landroid/view/View;

    iput-object p3, p0, Ly1/d;->c:Lc2/e;

    iput-object p4, p0, Ly1/d;->d:Lw1/a;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9

    iget-object v0, p0, Ly1/d;->a:Ly1/f;

    iget-object v1, p0, Ly1/d;->b:Landroid/view/View;

    iget-object v2, p0, Ly1/d;->c:Lc2/e;

    iget-object v3, p0, Ly1/d;->d:Lw1/a;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-static/range {v0 .. v8}, Ly1/f;->d(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method
