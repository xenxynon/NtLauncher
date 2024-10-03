.class public final synthetic Lcom/nothing/launcher/popup/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/nothing/launcher/popup/NTPopupContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/popup/NTPopupContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/popup/c;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/popup/c;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->h(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)V

    return-void
.end method
