.class public final synthetic Lcom/android/launcher3/allapps/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/b;->g:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/b;->g:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->h(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Landroid/view/View;)V

    return-void
.end method