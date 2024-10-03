.class public final synthetic Lcom/android/quickstep/views/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/DigitalWellBeingToast;

.field public final synthetic h:J

.field public final synthetic i:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/DigitalWellBeingToast;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/e;->g:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iput-wide p2, p0, Lcom/android/quickstep/views/e;->h:J

    iput-wide p4, p0, Lcom/android/quickstep/views/e;->i:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/views/e;->g:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-wide v1, p0, Lcom/android/quickstep/views/e;->h:J

    iget-wide v3, p0, Lcom/android/quickstep/views/e;->i:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/quickstep/views/DigitalWellBeingToast;->a(Lcom/android/quickstep/views/DigitalWellBeingToast;JJ)V

    return-void
.end method
