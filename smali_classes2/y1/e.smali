.class public final synthetic Ly1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic g:Ly1/f;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Lc2/e;

.field public final synthetic j:Lw1/a;


# direct methods
.method public synthetic constructor <init>(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/e;->g:Ly1/f;

    iput-object p2, p0, Ly1/e;->h:Landroid/view/View;

    iput-object p3, p0, Ly1/e;->i:Lc2/e;

    iput-object p4, p0, Ly1/e;->j:Lw1/a;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget-object v0, p0, Ly1/e;->g:Ly1/f;

    iget-object v1, p0, Ly1/e;->h:Landroid/view/View;

    iget-object v2, p0, Ly1/e;->i:Lc2/e;

    iget-object v3, p0, Ly1/e;->j:Lw1/a;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Ly1/f;->e(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
