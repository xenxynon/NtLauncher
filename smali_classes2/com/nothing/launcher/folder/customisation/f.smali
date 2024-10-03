.class public final synthetic Lcom/nothing/launcher/folder/customisation/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/nothing/launcher/folder/customisation/g$a;

.field public final synthetic h:Lcom/nothing/launcher/folder/customisation/g;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/folder/customisation/g$a;Lcom/nothing/launcher/folder/customisation/g;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/f;->g:Lcom/nothing/launcher/folder/customisation/g$a;

    iput-object p2, p0, Lcom/nothing/launcher/folder/customisation/f;->h:Lcom/nothing/launcher/folder/customisation/g;

    iput p3, p0, Lcom/nothing/launcher/folder/customisation/f;->i:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/f;->g:Lcom/nothing/launcher/folder/customisation/g$a;

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/f;->h:Lcom/nothing/launcher/folder/customisation/g;

    iget p0, p0, Lcom/nothing/launcher/folder/customisation/f;->i:I

    invoke-static {v0, v1, p0, p1}, Lcom/nothing/launcher/folder/customisation/g;->a(Lcom/nothing/launcher/folder/customisation/g$a;Lcom/nothing/launcher/folder/customisation/g;ILandroid/view/View;)V

    return-void
.end method
