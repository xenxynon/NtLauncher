.class Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/LoaderMemoryLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogEntry"
.end annotation


# instance fields
.field protected final mLogLevel:I

.field protected final mLogObject:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final mLogString:Ljava/lang/String;

.field protected final mLogTag:Ljava/lang/String;

.field protected final mStackStrace:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogLevel:I

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogString:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mStackStrace:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogObject:Ljava/lang/Object;

    return-void
.end method
