.class public final synthetic Lcom/android/quickstep/interaction/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/j;->g:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/j;->g:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    invoke-static {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->b(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)V

    return-void
.end method
