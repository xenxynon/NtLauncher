.class public final synthetic Lcom/nothing/launcher/folder/customisation/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/e;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/e;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    invoke-static {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->b(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    return-void
.end method
