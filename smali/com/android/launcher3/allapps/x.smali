.class public final synthetic Lcom/android/launcher3/allapps/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/allapps/SearchTransitionController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/SearchTransitionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/x;->g:Lcom/android/launcher3/allapps/SearchTransitionController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/x;->g:Lcom/android/launcher3/allapps/SearchTransitionController;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/SearchTransitionController;->a(Lcom/android/launcher3/allapps/SearchTransitionController;Landroid/view/View;)V

    return-void
.end method
