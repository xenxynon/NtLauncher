.class public final synthetic Lcom/nothing/launcher/allapps/search/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic g:Z

.field public final synthetic h:Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;


# direct methods
.method public synthetic constructor <init>(ZLcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/nothing/launcher/allapps/search/d;->g:Z

    iput-object p2, p0, Lcom/nothing/launcher/allapps/search/d;->h:Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nothing/launcher/allapps/search/d;->g:Z

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/d;->h:Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;

    invoke-static {v0, p0, p1}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->d(ZLcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
