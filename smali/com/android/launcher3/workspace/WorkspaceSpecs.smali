.class public final Lcom/android/launcher3/workspace/WorkspaceSpecs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final workspaceHeightSpecList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/workspace/WorkspaceSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final workspaceWidthSpecList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/workspace/WorkspaceSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/ResourceHelper;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "asAttributeSet(parser)"

    const-string v3, "resourceHelper"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/workspace/WorkspaceSpecs;->workspaceHeightSpecList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/workspace/WorkspaceSpecs;->workspaceWidthSpecList:Ljava/util/List;

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/util/ResourceHelper;->getXml()Landroid/content/res/XmlResourceParser;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v5, :cond_10

    :cond_1
    if-eq v6, v3, :cond_10

    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    const-string v6, "workspaceSpecs"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    if-ne v9, v7, :cond_3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_e

    :cond_3
    if-eq v9, v3, :cond_e

    if-ne v9, v8, :cond_2

    const-string v9, "workspaceSpec"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lcom/android/launcher3/R$styleable;->WorkspaceSpec:[I

    const-string v11, "WorkspaceSpec"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lcom/android/launcher3/util/ResourceHelper;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    invoke-static {}, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;->values()[Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    move-result-object v10

    sget-object v11, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;->HEIGHT:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v9, v3, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    aget-object v13, v10, v11

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    const/4 v10, 0x0

    move-object v14, v10

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    :goto_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    if-ne v10, v7, :cond_4

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v9, :cond_a

    :cond_4
    if-eq v10, v3, :cond_a

    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    invoke-static {v11, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v10, v8, :cond_9

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v3, "endPadding"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance v15, Lcom/android/launcher3/workspace/SizeSpec;

    invoke-direct {v15, v1, v11}, Lcom/android/launcher3/workspace/SizeSpec;-><init>(Lcom/android/launcher3/util/ResourceHelper;Landroid/util/AttributeSet;)V

    goto :goto_3

    :sswitch_1
    const-string v3, "cellSize"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/android/launcher3/workspace/SizeSpec;

    invoke-direct {v3, v1, v11}, Lcom/android/launcher3/workspace/SizeSpec;-><init>(Lcom/android/launcher3/util/ResourceHelper;Landroid/util/AttributeSet;)V

    move-object/from16 v17, v3

    goto :goto_3

    :sswitch_2
    const-string v3, "startPadding"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance v14, Lcom/android/launcher3/workspace/SizeSpec;

    invoke-direct {v14, v1, v11}, Lcom/android/launcher3/workspace/SizeSpec;-><init>(Lcom/android/launcher3/util/ResourceHelper;Landroid/util/AttributeSet;)V

    goto :goto_3

    :sswitch_3
    const-string v3, "gutter"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance v3, Lcom/android/launcher3/workspace/SizeSpec;

    invoke-direct {v3, v1, v11}, Lcom/android/launcher3/workspace/SizeSpec;-><init>(Lcom/android/launcher3/util/ResourceHelper;Landroid/util/AttributeSet;)V

    move-object/from16 v16, v3

    :cond_9
    :goto_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_a
    if-eqz v14, :cond_d

    if-eqz v15, :cond_d

    if-eqz v16, :cond_d

    if-eqz v17, :cond_d

    new-instance v3, Lcom/android/launcher3/workspace/WorkspaceSpec;

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcom/android/launcher3/workspace/WorkspaceSpec;-><init>(ILcom/android/launcher3/workspace/WorkspaceSpec$SpecType;Lcom/android/launcher3/workspace/SizeSpec;Lcom/android/launcher3/workspace/SizeSpec;Lcom/android/launcher3/workspace/SizeSpec;Lcom/android/launcher3/workspace/SizeSpec;)V

    invoke-virtual {v3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->isValid()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getSpecType()Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    move-result-object v9

    sget-object v10, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;->HEIGHT:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    if-ne v9, v10, :cond_b

    iget-object v9, v0, Lcom/android/launcher3/workspace/WorkspaceSpecs;->workspaceHeightSpecList:Ljava/util/List;

    goto :goto_4

    :cond_b
    iget-object v9, v0, Lcom/android/launcher3/workspace/WorkspaceSpecs;->workspaceWidthSpecList:Ljava/util/List;

    :goto_4
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid workspaceSpec found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All attributes in workspaceSpec must be defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v3, v0, Lcom/android/launcher3/workspace/WorkspaceSpecs;->workspaceWidthSpecList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/android/launcher3/workspace/WorkspaceSpecs;->workspaceHeightSpecList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorkspaceSpecs is incomplete - height list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/launcher3/workspace/WorkspaceSpecs;->workspaceHeightSpecList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; width list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/launcher3/workspace/WorkspaceSpecs;->workspaceWidthSpecList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_11

    const/4 v3, 0x1

    goto :goto_5

    :cond_11
    instance-of v3, v0, Lorg/xmlpull/v1/XmlPullParserException;

    :goto_5
    if-eqz v3, :cond_12

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failure parsing workspaces specs file."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_12
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x49959ee5 -> :sswitch_3
        -0x381342b1 -> :sswitch_2
        -0x36b1a37d -> :sswitch_1
        -0x2280514a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final getCalculatedHeightSpec(II)Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/workspace/WorkspaceSpecs;->workspaceHeightSpecList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/workspace/WorkspaceSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getMaxAvailableSize()I

    move-result v1

    if-gt p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    new-instance p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;-><init>(IILcom/android/launcher3/workspace/WorkspaceSpec;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCalculatedWidthSpec(II)Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/workspace/WorkspaceSpecs;->workspaceWidthSpecList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/workspace/WorkspaceSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getMaxAvailableSize()I

    move-result v1

    if-gt p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    new-instance p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;-><init>(IILcom/android/launcher3/workspace/WorkspaceSpec;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
