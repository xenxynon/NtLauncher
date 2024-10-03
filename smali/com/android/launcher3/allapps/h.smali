.class public final synthetic Lcom/android/launcher3/allapps/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

.field public final synthetic h:I

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/h;->g:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput p2, p0, Lcom/android/launcher3/allapps/h;->h:I

    iput-boolean p3, p0, Lcom/android/launcher3/allapps/h;->i:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/h;->g:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget v1, p0, Lcom/android/launcher3/allapps/h;->h:I

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/h;->i:Z

    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->g(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;IZLcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;)V

    return-void
.end method
