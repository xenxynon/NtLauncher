.class public final synthetic Lf3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lf3/d$a;

.field public final synthetic h:Lf3/d;

.field public final synthetic i:I

.field public final synthetic j:Lf3/e;


# direct methods
.method public synthetic constructor <init>(Lf3/d$a;Lf3/d;ILf3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/c;->g:Lf3/d$a;

    iput-object p2, p0, Lf3/c;->h:Lf3/d;

    iput p3, p0, Lf3/c;->i:I

    iput-object p4, p0, Lf3/c;->j:Lf3/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lf3/c;->g:Lf3/d$a;

    iget-object v1, p0, Lf3/c;->h:Lf3/d;

    iget v2, p0, Lf3/c;->i:I

    iget-object p0, p0, Lf3/c;->j:Lf3/e;

    invoke-static {v0, v1, v2, p0, p1}, Lf3/d;->a(Lf3/d$a;Lf3/d;ILf3/e;Landroid/view/View;)V

    return-void
.end method
