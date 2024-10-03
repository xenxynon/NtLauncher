.class public Landroidx/slice/SliceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceUtils$SliceParseException;,
        Landroidx/slice/SliceUtils$SliceActionListener;,
        Landroidx/slice/SliceUtils$SerializeOptions;
    }
.end annotation


# static fields
.field public static final LOADING_ALL:I = 0x0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final LOADING_COMPLETE:I = 0x2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final LOADING_PARTIAL:I = 0x1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Landroid/content/Context;Landroidx/core/graphics/drawable/IconCompat;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {p1, p0, p2}, Landroidx/slice/SliceXml;->convertToBytes(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)[B

    move-result-object p0

    const/4 p1, 0x0

    array-length p2, p0

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/drawable/IconCompat;->createWithData([BII)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static convert(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/slice/Slice;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroidx/slice/Slice;->getSpec()Landroidx/slice/SliceSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->setSpec(Landroidx/slice/SliceSpec;)Landroidx/slice/Slice$Builder;

    invoke-virtual {p1}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;

    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "slice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string v4, "input"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v4, "image"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v4, "text"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "long"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_1

    :sswitch_5
    const-string v4, "int"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    const-string v4, "action"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-static {p0, v2, p2}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getActionMode()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/slice/Slice$Builder;->addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getImageMode()I

    move-result v2

    if-eqz v2, :cond_9

    if-eq v2, v5, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-static {p0, v2, p2}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/core/graphics/drawable/IconCompat;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot serialize icon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getActionMode()I

    move-result v2

    if-eqz v2, :cond_b

    if-eq v2, v5, :cond_a

    goto/16 :goto_0

    :cond_a
    new-instance v2, Landroidx/slice/SliceUtils$1;

    invoke-direct {v2}, Landroidx/slice/SliceUtils$1;-><init>()V

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v3

    invoke-static {p0, v3, p2}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/slice/Slice$Builder;->addAction(Landroidx/slice/SliceItem$ActionHandler;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot serialize action"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static copyMetadata(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;
    .locals 8
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const-string v1, "long"

    const-string v2, "ttl"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const-string v5, "millis"

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v6

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v7, v5, v2}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_0
    const-string v2, "last_updated"

    invoke-static {p0, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v6

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v7, v5, v1}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_1
    const-string v1, "int"

    const-string v2, "color"

    invoke-static {p0, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getInt()I

    move-result v4

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v6}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_2
    const-string v2, "layout_direction"

    invoke-static {p0, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_3
    invoke-static {p0}, Landroidx/slice/SliceUtils;->getSliceKeywords(Landroidx/slice/Slice;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-direct {v2, v0}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v6}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    :cond_4
    const-string v1, "keywords"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :cond_5
    invoke-virtual {p0}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0, p0}, Landroidx/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;

    :cond_6
    return-object v0
.end method

.method private static doesStreamStartWith(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z
    .locals 4

    const-string v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_1

    return v3

    :cond_1
    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v3
.end method

.method public static getLoadingState(Landroidx/slice/Slice;)I
    .locals 3
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "partial"

    invoke-static {p0, v0, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public static getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;
    .locals 4
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    const-string v0, "slice"

    const-string v1, "actions"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    const-string v3, "shortcut"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-static {p0, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public static getSliceKeywords(Landroidx/slice/Slice;)Ljava/util/List;
    .locals 4
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "slice"

    const-string v1, "keywords"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "text"

    invoke-static {p0, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    return-object v2
.end method

.method public static parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/slice/SliceUtils$SliceActionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-class p1, Landroidx/slice/Slice;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-static {p1, v0}, Landroidx/slice/SliceUtils;->doesStreamStartWith(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z

    move-result p1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroidx/versionedparcelable/ParcelUtils;->fromInputStream(Ljava/io/InputStream;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p1

    check-cast p1, Landroidx/slice/Slice;

    new-instance p2, Landroidx/slice/SliceUtils$2;

    invoke-direct {p2, p3}, Landroidx/slice/SliceUtils$2;-><init>(Landroidx/slice/SliceUtils$SliceActionListener;)V

    invoke-static {p1, p2, p0}, Landroidx/slice/SliceUtils;->setActionsAndUpdateIcons(Landroidx/slice/Slice;Landroidx/slice/SliceItem$ActionHandler;Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-static {p0, v0, p2, p3}, Landroidx/slice/SliceXml;->parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public static serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .locals 0
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/slice/SliceUtils$SerializeOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p0, p3}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/slice/Slice;

    move-result-object p0

    invoke-static {p0, p2}, Landroidx/versionedparcelable/ParcelUtils;->toOutputStream(Landroidx/versionedparcelable/VersionedParcelable;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .locals 0
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/slice/SliceUtils$SerializeOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p0, p1, p2, p4}, Landroidx/slice/SliceUtils;->serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Landroidx/slice/SliceUtils$SerializeOptions;)V

    return-void
.end method

.method private static setActionsAndUpdateIcons(Landroidx/slice/Slice;Landroidx/slice/SliceItem$ActionHandler;Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "slice"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "action"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroidx/core/util/Pair;

    iget-object v2, v0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v2, Landroidx/core/util/Pair;

    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    :pswitch_2
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidx/slice/SliceUtils;->setActionsAndUpdateIcons(Landroidx/slice/Slice;Landroidx/slice/SliceItem$ActionHandler;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static stripSlice(Landroidx/slice/Slice;IZ)Landroidx/slice/Slice;
    .locals 6
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Landroidx/slice/widget/ListContent;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;Landroid/util/AttributeSet;II)V

    invoke-virtual {p2}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Landroidx/slice/SliceUtils;->copyMetadata(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Landroidx/slice/widget/ShortcutContent;

    invoke-direct {p0, p2}, Landroidx/slice/widget/ShortcutContent;-><init>(Landroidx/slice/widget/ListContent;)V

    invoke-virtual {p0, v0}, Landroidx/slice/widget/ShortcutContent;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p2}, Landroidx/slice/widget/ListContent;->getHeaderItem()Landroidx/slice/SliceItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    invoke-virtual {p2}, Landroidx/slice/widget/ListContent;->getSliceActions()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    new-instance p1, Landroidx/slice/Slice$Builder;

    invoke-direct {p1, v0}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string v1, "actions"

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/slice/core/SliceAction;

    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-direct {v2, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    check-cast p2, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p2, v1}, Landroidx/slice/core/SliceActionImpl;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    :cond_2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :cond_3
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    :cond_4
    return-object p0
.end method
