.class public final synthetic Lcom/android/launcher3/taskbar/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/util/MultiTranslateDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/MultiTranslateDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/j4;->g:Lcom/android/launcher3/util/MultiTranslateDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/j4;->g:Lcom/android/launcher3/util/MultiTranslateDelegate;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->d(Lcom/android/launcher3/util/MultiTranslateDelegate;)V

    return-void
.end method
