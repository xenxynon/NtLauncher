.class public final synthetic Lcom/android/quickstep/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/OverviewComponentObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OverviewComponentObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/d3;->g:Lcom/android/quickstep/OverviewComponentObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/d3;->g:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-static {p0}, Lcom/android/quickstep/OverviewComponentObserver;->c(Lcom/android/quickstep/OverviewComponentObserver;)V

    return-void
.end method
