.class public final synthetic Lq4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lq4/c;

.field public final synthetic h:I

.field public final synthetic i:Lq4/c$a;


# direct methods
.method public synthetic constructor <init>(Lq4/c;ILq4/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq4/b;->g:Lq4/c;

    iput p2, p0, Lq4/b;->h:I

    iput-object p3, p0, Lq4/b;->i:Lq4/c$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lq4/b;->g:Lq4/c;

    iget v1, p0, Lq4/b;->h:I

    iget-object p0, p0, Lq4/b;->i:Lq4/c$a;

    invoke-static {v0, v1, p0, p1}, Lq4/c;->a(Lq4/c;ILq4/c$a;Landroid/view/View;)V

    return-void
.end method
