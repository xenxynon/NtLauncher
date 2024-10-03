.class public final synthetic La4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic g:Ly5/l;

.field public final synthetic h:Lcom/nothing/launcher/views/NTBubbleTextView;


# direct methods
.method public synthetic constructor <init>(Ly5/l;Lcom/nothing/launcher/views/NTBubbleTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/a;->g:Ly5/l;

    iput-object p2, p0, La4/a;->h:Lcom/nothing/launcher/views/NTBubbleTextView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, La4/a;->g:Ly5/l;

    iget-object p0, p0, La4/a;->h:Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-static {v0, p0, p1}, La4/b;->a(Ly5/l;Lcom/nothing/launcher/views/NTBubbleTextView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
