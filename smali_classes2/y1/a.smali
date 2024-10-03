.class public final synthetic Ly1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Ly1/f;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Lc2/e;

.field public final synthetic j:Lw1/a;


# direct methods
.method public synthetic constructor <init>(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/a;->g:Ly1/f;

    iput-object p2, p0, Ly1/a;->h:Landroid/view/View;

    iput-object p3, p0, Ly1/a;->i:Lc2/e;

    iput-object p4, p0, Ly1/a;->j:Lw1/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ly1/a;->g:Ly1/f;

    iget-object v1, p0, Ly1/a;->h:Landroid/view/View;

    iget-object v2, p0, Ly1/a;->i:Lc2/e;

    iget-object p0, p0, Ly1/a;->j:Lw1/a;

    invoke-static {v0, v1, v2, p0, p1}, Ly1/f;->a(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/view/View;)V

    return-void
.end method
