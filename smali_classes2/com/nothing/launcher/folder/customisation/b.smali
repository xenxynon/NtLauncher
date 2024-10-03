.class public final synthetic Lcom/nothing/launcher/folder/customisation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/nothing/launcher/folder/customisation/CustomPreview;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/folder/customisation/CustomPreview;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/b;->g:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/b;->g:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    invoke-static {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->a(Lcom/nothing/launcher/folder/customisation/CustomPreview;)V

    return-void
.end method
