.class public Lcom/android/quickstep/util/ActiveGestureLog$EventLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/ActiveGestureLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EventLog"
.end annotation


# instance fields
.field protected final eventEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final logId:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->eventEntries:Ljava/util/List;

    iput p1, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->logId:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/quickstep/util/ActiveGestureLog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;-><init>(I)V

    return-void
.end method
