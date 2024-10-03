.class public final synthetic Lf3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lf3/k$b;

.field public final synthetic h:Lf3/k;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lf3/k$b;Lf3/k;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/j;->g:Lf3/k$b;

    iput-object p2, p0, Lf3/j;->h:Lf3/k;

    iput p3, p0, Lf3/j;->i:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lf3/j;->g:Lf3/k$b;

    iget-object v1, p0, Lf3/j;->h:Lf3/k;

    iget p0, p0, Lf3/j;->i:I

    invoke-static {v0, v1, p0, p1}, Lf3/k;->a(Lf3/k$b;Lf3/k;ILandroid/view/View;)V

    return-void
.end method
