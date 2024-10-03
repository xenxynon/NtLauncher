.class public final synthetic Lcom/nothing/launcher/folder/customisation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Ly5/l;

.field public final synthetic h:I

.field public final synthetic i:Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;


# direct methods
.method public synthetic constructor <init>(Ly5/l;ILcom/nothing/launcher/folder/customisation/CustomTypeSelectView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/c;->g:Ly5/l;

    iput p2, p0, Lcom/nothing/launcher/folder/customisation/c;->h:I

    iput-object p3, p0, Lcom/nothing/launcher/folder/customisation/c;->i:Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/c;->g:Ly5/l;

    iget v1, p0, Lcom/nothing/launcher/folder/customisation/c;->h:I

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/c;->i:Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;

    invoke-static {v0, v1, p0, p1}, Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;->a(Ly5/l;ILcom/nothing/launcher/folder/customisation/CustomTypeSelectView;Landroid/view/View;)V

    return-void
.end method
