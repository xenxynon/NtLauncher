.class public final synthetic Lcom/android/quickstep/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/RecentsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/e4;->a:Lcom/android/quickstep/RecentsActivity;

    return-void
.end method


# virtual methods
.method public final onScreenOnChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/e4;->a:Lcom/android/quickstep/RecentsActivity;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsActivity;->w(Lcom/android/quickstep/RecentsActivity;Z)V

    return-void
.end method
