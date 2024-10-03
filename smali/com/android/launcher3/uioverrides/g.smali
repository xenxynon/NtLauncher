.class public final synthetic Lcom/android/launcher3/uioverrides/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/RunnableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/g;->a:Lcom/android/launcher3/util/RunnableList;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/g;->a:Lcom/android/launcher3/util/RunnableList;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->e0(Lcom/android/launcher3/util/RunnableList;J)V

    return-void
.end method
