.class public Lcom/android/quickstep/util/ProtoTracer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams<",
        "Lt1/r$a;",
        "Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;",
        "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;",
        "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/util/ProtoTracer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAGIC_NUMBER_VALUE:J = 0x4352545248434e4cL

.field private static final TAG:Ljava/lang/String; = "ProtoTracer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/tracing/FrameProtoTracer<",
            "Lt1/r$a;",
            "Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;",
            "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/quickstep/util/c0;->a:Lcom/android/quickstep/util/c0;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/ProtoTracer;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;-><init>(Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;)V

    iput-object p1, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
            "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    return-void
.end method

.method public getEncapsulatingTraceProto()Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 0

    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->newBuilder()Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getEncapsulatingTraceProto()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/util/ProtoTracer;->getEncapsulatingTraceProto()Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getProtoBytes(Ljava/lang/Object;)[B
    .locals 0

    check-cast p1, Lt1/r$a;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ProtoTracer;->getProtoBytes(Lt1/r$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public getProtoBytes(Lt1/r$a;)[B
    .locals 0

    invoke-interface {p1}, Lt1/r$a;->build()Lt1/r;

    move-result-object p0

    invoke-interface {p0}, Lt1/r;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getProtoSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lt1/r$a;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ProtoTracer;->getProtoSize(Lt1/r$a;)I

    move-result p0

    return p0
.end method

.method public getProtoSize(Lt1/r$a;)I
    .locals 0

    invoke-interface {p1}, Lt1/r$a;->build()Lt1/r;

    move-result-object p0

    invoke-interface {p0}, Lt1/r;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method public getTraceFile()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/quickstep/util/ProtoTracer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "launcher_trace.pb"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public remove(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
            "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->remove(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    return-void
.end method

.method public scheduleFrameUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->scheduleFrameUpdate()V

    return-void
.end method

.method public serializeEncapsulatingProto(Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;Ljava/util/Queue;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;",
            "Ljava/util/Queue<",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;",
            ">;)[B"
        }
    .end annotation

    const-string p0, "ProtoTracer.serializeEncapsulatingProto"

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-wide v0, 0x4352545248434e4cL    # 2.0637047828855088E16

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->setMagicNumber(J)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    invoke-interface {p2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->addEntry(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {p0}, Lt1/a;->toByteArray()[B

    move-result-object p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0
.end method

.method public bridge synthetic serializeEncapsulatingProto(Ljava/lang/Object;Ljava/util/Queue;)[B
    .locals 0

    check-cast p1, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/ProtoTracer;->serializeEncapsulatingProto(Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;Ljava/util/Queue;)[B

    move-result-object p0

    return-object p0
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->start()V

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->stop()V

    return-void
.end method

.method public update()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->update()V

    return-void
.end method

.method public updateBufferProto(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;Ljava/util/ArrayList;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
            "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
            ">;>;)",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;"
        }
    .end annotation

    const-string p0, "ProtoTracer.updateBufferProto"

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->newBuilder()Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->setElapsedRealtimeNanos(J)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceProto;->newBuilder()Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/tracing/ProtoTraceable;

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/tracing/ProtoTraceable;->writeToProto(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->setLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0
.end method

.method public bridge synthetic updateBufferProto(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/ProtoTracer;->updateBufferProto(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;Ljava/util/ArrayList;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    move-result-object p0

    return-object p0
.end method
